package com.mvc.service;

import java.util.ArrayList;
import java.util.List;

import com.mvc.pojo.Account;

public class AccountManager {
	
	private static List<Account> accounts = new ArrayList<Account>();
	
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
	
	public Account getAccount(int id) {
		Account account = null;
		for (Account a : accounts) {
			if(id == a.getId())
				account = a;
				break;
		}
		return account;
	}
	
}
