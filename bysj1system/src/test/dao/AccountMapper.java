package test.dao;

import java.util.List;
import test.entry.Account;

public interface AccountMapper {
    int deleteByPrimaryKey(String accountid);

    int insert(Account  record);

    int insertSelective(Account record);

    Account selectByPrimaryKey(String accountid);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);

	Account login(Account account);

	//查询所有
	List<Account> selectAll();
	
	int insert1(Account account);
}