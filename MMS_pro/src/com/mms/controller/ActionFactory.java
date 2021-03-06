package com.mms.controller;

import com.mms.controller.action.Action;
import com.mms.controller.action.IdCheckAction;
import com.mms.controller.action.LoginAction;
import com.mms.controller.action.LogoutAction;
import com.mms.controller.action.MainAction;
import com.mms.controller.action.SignUpAction;

/**
 * request로 받아온 매개변수의 command의 값으로 각 기능을 수행할 액션을 분기하는 클래스 <br>
 * action추가 시 최대한 기능별로 정렬될 수 있도록 한다. 수정이 잦은 class이므로 주의하여 편집!!
 * 
 *
 */

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;

		System.out.println("ActionFactory : " + command);

		if (command.equals("main")) {

			action = new MainAction();

		} 
		else if(command.equals("signUp")) {
			action = new SignUpAction();
		}
		else if(command.equals("login")) {
			action = new LoginAction();
		}
		else if(command.equals("logout")) {
			action = new LogoutAction();
		}
		else if(command.equals("idCheck")) {
			action = new IdCheckAction();
		}
	
		/**
		 * @author OSJ
		 */
		
		return action;
	}

}
