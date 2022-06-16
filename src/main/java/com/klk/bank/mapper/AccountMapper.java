package com.klk.bank.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.klk.bank.domain.AccountDto;

public interface AccountMapper {

	List<AccountDto> selectAllAccount(@Param("from")int from, @Param("row_per_page")int row_per_page, @Param("type") String type, @Param("keyword")String keyword);

	int insertAccount(AccountDto account);

	AccountDto selectAccount(String account_num);

	int updateAccount(AccountDto account);

	int deleteAccount(String account_num);

	int selectSearchCountAccount(@Param("type") String type, @Param("keyword")String keyword);

	int countAccountNum(String account_num);

}