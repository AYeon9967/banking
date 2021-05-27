package bank.service;

import bank.dao.BankDao;
import bank.vo.Account;

public class Service {

	private static Service service = new Service();
	
	private Service() {}
	private BankDao dao = BankDao.getInstance();
	
	public static Service getInstance() {
		return service;
	}

	public void join(Account account) {
		dao.join(account);
	}

	public boolean login(String id, String pwd) {
		return dao.login(id, pwd);
	}

	public int deposit(String id, int money) {
		return dao.deposit(id, money);
		
	}

	public int withdraw(String id, int money) {
		return dao.withdraw(id, money);
		
	}

	public int query(String id) {
		return dao.query(id);
	}
}
