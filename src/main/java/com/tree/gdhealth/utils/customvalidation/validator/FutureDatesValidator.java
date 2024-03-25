package com.tree.gdhealth.utils.customvalidation.validator;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.List;

import com.tree.gdhealth.utils.customvalidation.FutureDates;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * {@link FutureDates} 애노테이션을 사용하여 검증하는 미래 날짜 유효성 검사 클래스
 * <p>
 * 이 클래스는 {@link ConstraintValidator} 인터페이스를 구현하여 사용자가 입력한 날짜들이 현재 날짜와 같거나 미래인지
 * 검증합니다.
 * </p>
 * 
 * @author 진관호
 */
public class FutureDatesValidator implements ConstraintValidator<FutureDates, List<String>> {

	/**
	 * 주어진 값들이 유효한 미래 날짜인지 검증합니다.
	 *
	 * @param values  유효성을 검사할 값들의 목록
	 * @param context 제약 조건 검사를 위한 컨텍스트
	 * @return 주어진 값들이 모두 현재 날짜와 같거나 미래의 날짜이면 true, 그렇지 않으면 false
	 */
	@Override
	public boolean isValid(List<String> values, ConstraintValidatorContext context) {

		if (values == null || values.isEmpty()) {
			return false;
		}

		try {
			
			for (String value : values) {

				LocalDate date = LocalDate.parse(value);

				if (!(date.isEqual(LocalDate.now()) || date.isAfter(LocalDate.now()))) {
					return false;
				}
			}

		} catch (DateTimeParseException e) {
			return false;
		}

		return true;
	}
}