package com.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mvc.pojo.Account;

public class AccountManager {
	
	private static List<Account> accounts = new ArrayList<Account>();
	
	@Autowired
	private Account account;
	
	static {
		accounts.add(new Account(1, "admin", "admin"));
		accounts.add(new Account(2, "tomas", "sys,view"));
		accounts.add(new Account(3, "scott", "view,add"));
		accounts.add(new Account(4, "jackson", "view"));
	}

	public List<Account> findAccount() {
		return accounts;
	}
	
	public void addAccount (Account account) {
		int id =( accounts.get(accounts.size()-1).getId()) +1;
		account.setId(id);
		
		accounts.add(account);
	}
	
}
