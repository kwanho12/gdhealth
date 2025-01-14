package com.tree.gdhealth.headoffice.customer;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tree.gdhealth.utils.auth.Auth;
import com.tree.gdhealth.utils.auth.Authority;
import com.tree.gdhealth.utils.pagination.HeadofficePagination;

import lombok.RequiredArgsConstructor;

/**
 * @author 진관호
 */
@RequestMapping("/headoffice/customer")
@RequiredArgsConstructor
@Controller
public class CustomerController {

	private final CustomerService customerService;

	/**
	 * 전체 회원 목록을 나타내는 페이지로 이동합니다.
	 * 
	 * @return 회원 목록 페이지
	 */
	@Auth(AUTHORITY = Authority.HEAD_EMP_ONLY)
	@GetMapping
	public String getCustomerList() {
		return "headoffice/customerList";
	}

	/**
	 * 페이지네이션 후의 회원 목록 영역을 리턴합니다.
	 * 
	 * @param pageNum 이동할 페이지 번호
	 * @return 페이지네이션 후의 회원 목록
	 * @apiNote 페이지 전체가 아닌 회원의 목록을 나타내는 영역만 리턴합니다.
	 */
	@GetMapping("/pagination")
	public String getPagination(Model model, @RequestParam int pageNum) {

		HeadofficePagination pagination = customerService.getPagination(pageNum, customerService.getCustomerCnt());

		List<Map<String, Object>> customerList = customerService.getCustomerList(pagination.getBeginRow(),
				pagination.getRowPerPage());

		model.addAttribute("lastPage", pagination.getLastPageNum());
		model.addAttribute("currentPage", pagination.getCurrentPageNum());
		model.addAttribute("startPageNum", pagination.getStartPageNum());
		model.addAttribute("endPageNum", pagination.getEndPageNum());
		model.addAttribute("prev", pagination.isPrev());
		model.addAttribute("next", pagination.isNext());
		
		model.addAttribute("customerList", customerList);

		return "headoffice/fragment/customerList";
	}

	/**
	 * 검색 결과가 반영된 페이지네이션 후의 회원 목록 영역을 리턴합니다.
	 * 
	 * @param type    검색할 keyword의 속성(id,active...)
	 * @param keyword 검색 내용
	 * @param pageNum 이동할 페이지 번호
	 * @return 페이지네이션 후의 회원 목록
	 * @apiNote 페이지 전체가 아닌 회원의 목록을 나타내는 영역만 리턴합니다.
	 */
	@GetMapping("/searchPagination")
	public String getPagination(Model model, @RequestParam String type, @RequestParam String keyword,
			@RequestParam int pageNum) {

		HeadofficePagination pagination = customerService.getPagination(pageNum,
				customerService.getCustomerCnt(type, keyword));

		List<Map<String, Object>> searchList = customerService.getCustomerList(pagination.getBeginRow(),
				pagination.getRowPerPage(), type, keyword);

		model.addAttribute("lastPage", pagination.getLastPageNum());
		model.addAttribute("currentPage", pagination.getCurrentPageNum());
		model.addAttribute("startPageNum", pagination.getStartPageNum());
		model.addAttribute("endPageNum", pagination.getEndPageNum());
		model.addAttribute("prev", pagination.isPrev());
		model.addAttribute("next", pagination.isNext());
		
		model.addAttribute("customerList", searchList);
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);

		return "headoffice/fragment/searchCustomerList";
	}

}
