package com.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
}
