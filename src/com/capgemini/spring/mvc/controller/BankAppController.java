package com.capgemini.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.capgemini.bankapp.exception.AccountNotFoundException;
import com.capgemini.bankapp.exception.LowBalanceException;
import com.capgemini.bankapp.model.BankAccount;
import com.capgemini.bankapp.service.BankAccountService;

@Controller
@RequestMapping("/bankapp")
public class BankAppController {
	
	@Autowired
	private BankAccountService service;
	
	@RequestMapping("/newAccountPage")
	public String addNewPage() {
		return "Create_account";
	}
	
	@RequestMapping("/new")
	public String addNew(@RequestParam("name1") String name, @RequestParam("account_type") String type, @RequestParam("account_balance") double balance) {
		BankAccount account = new BankAccount(name, type, balance);
		service.addNewBankAccount(account);
		return "index";
	}
	
	@RequestMapping("/withdrawPage")
	public String withdrawPage() {
		return "withdraw";
	}
	
	@RequestMapping("/withdraw")
	public String withdraw(@RequestParam("AccNo") int id, @RequestParam("Amt") double amount) {
		try {
			service.withdraw(id, amount);
		} catch (AccountNotFoundException | LowBalanceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index";
	}
	
	@RequestMapping("/depositPage")
	public String depositPage() {
		return "deposit";
	}
	
	@RequestMapping("/deposit")
	public String deposit(@RequestParam("AccNo") int id, @RequestParam("Amt") double amount) {
		try {
			service.deposit(id, amount);
		} catch (AccountNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index";
	}
	
	@RequestMapping("/fundTransferPage")
	public String fundTransferPage() {
		return "transfer";
	}
	
	@RequestMapping("/transfer")
	public String fundTransfer(@RequestParam("FAccNo") long fid, @RequestParam("TAccNo") long tid, @RequestParam("Amt") double amount) {
		try {
			
				service.fundTransfer(fid, tid, amount);
			
		} catch (LowBalanceException|AccountNotFoundException e) {
			// TODO Auto-generated catch block
			return "displayAccountNotFoudError";
		}
		return "index";
	}
	
	@RequestMapping("/deletePage")
	public String deletePage() {
		return "delete";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("AccNo") long id) {
		try {
				service.deleteBankAccount(id);
			} catch (AccountNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index";
	}
	
	@RequestMapping("/updateSearch")
	public String updateSearchPage() {
		return "update";
	}
	
	@RequestMapping("/updatePage")
	public String updatePage(@RequestParam("AccNo") long id, Model model) {
		BankAccount account= service.searchAccount(id);
		if(account==null)
			return "index";
		model.addAttribute("accountDetails", account);
		return "accountInfo";
	}
	
	@RequestMapping("/update")
	public RedirectView update(@RequestParam("AccNo") long id, @RequestParam("name1") String name, @RequestParam("account_type") String type, @RequestParam("account_balance") double balance) {
		BankAccount account = new BankAccount(id, name, type, balance);
		service.updateAccountDetails(account);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("displayAllAccountsPage");
	    return redirectView;
	}
	
	@RequestMapping("/checkBalancePage")
	public String checkBalancePage() {
		return "checkbalance";
	}
	
	@RequestMapping("/checkBalance")
	public String checkBalance(@RequestParam("AccNo") long id, Model model) {
		double balance= service.checkBalance(id);
		model.addAttribute("balance", balance);
		return "displayBalance";
	}
	
	@RequestMapping("/searchAccountPage")
	public String searchAccountPage() {
		return "accountdetails";
	}
	
	@RequestMapping("/searchAccount")
	public String searchAccount(@RequestParam("AccNo") long id, Model model) {
		BankAccount account= service.searchAccount(id);
		if(account==null)
			return "index";
		model.addAttribute("accountDetails", account);
		return "displayAccountDetails";
	}
	
	@RequestMapping("/displayAllAccountsPage")
	public String displayAllAccountsPage(Model model) {
		List<BankAccount> accountsList = service.findAllBankAccounts();
		model.addAttribute("accountsList",accountsList);
		return "displayTable";
	}
	
	/*@RequestMapping("/displayAllAccounts")
	public String displayAllAccounts(@RequestParam("AccNo") long id, Model model) {
		BankAccount account= service.searchAccount(id);
		if(account==null)
			return "index";
		model.addAttribute("accountDetails", account);
		return "displayAccountDetails";
	}*/
	
}