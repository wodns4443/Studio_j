package com.studioj.service.event;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface EventService {
	public int execute(Model model);
}
