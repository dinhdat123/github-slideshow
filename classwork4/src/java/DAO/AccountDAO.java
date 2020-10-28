/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Account;

/**
 *
 * @author KEY
 */
public class AccountDAO {

    public Account getAccountByUsernameandPassword(String username, String password) {
        if (username.equals("DinhDat") && password.equals("12345")) {
            Account account = new Account();
            account.setUsername(username);
            account.setPassword(password);
            return account;
        }
        return null;
    }
}
