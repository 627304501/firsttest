package test.dao;

import test.entry.Jurisdiction;

public interface JurisdictionMapper {
    int deleteByPrimaryKey(Integer jurisdictionid);

    int insert(Jurisdiction record);

    int insertSelective(Jurisdiction record);

    Jurisdiction selectByPrimaryKey(Integer jurisdictionid);

    int updateByPrimaryKeySelective(Jurisdiction record);

    int updateByPrimaryKey(Jurisdiction record);
}