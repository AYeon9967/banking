package bank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bank.service.Service;

public class WithdrawController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int money = Integer.parseInt(request.getParameter("money"));
		
		String id = (String)(request.getSession().getAttribute("id"));
		
		int tMoney = Service.getInstance().withdraw(id, money);
		if(tMoney < 0) {
			request.setAttribute("result", "Money is not enough to withdraw!");
		}
		
		request.setAttribute("money", money);
		request.setAttribute("tMoney", tMoney);
		
		HttpUtil.forward(request, response, "/result/withdrawResult.jsp");
	}

}
