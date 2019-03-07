package com.matt.repository.impl;

import com.matt.mapper.SystemUserMapper;
import com.matt.model.System_user;
import com.matt.repository.BaseRepository;
import com.matt.repository.SystemUserRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public class SystemUserRepositoryImpl extends BaseRepository implements SystemUserRepository {
    private final XMLReader reader = XMLReader.getInstance(SystemUserRepositoryImpl.class);
    @Override
    public Integer insertSystemUser(System_user user) {
        SimpleJdbcInsert insert = systemDao.getJdbcInsert()
                .withTableName("system_user").usingGeneratedKeyColumns("sn")
                .usingColumns("username", "password", "name", "role");
        SqlParameterSource source = new BeanPropertySqlParameterSource(user);
        return insert.executeAndReturnKey(source).intValue();
    }

    @Override
    public System_user findUserByUsername(String username) {
        try{
            String sql = reader.getString("select_system_user_by_username");
            SqlParameterSource bindValues = new MapSqlParameterSource()
                .addValue("username", username);
            return systemDao.getJdbcTemplate().queryForObject(sql, bindValues, new SystemUserMapper());
        }catch(EmptyResultDataAccessException e){
            log.info("EmptyResultDataAccessException");
            log.error(username + "無此帳號");
            return null;
        }catch (Exception e){
            log.info("Exception");
            log.error(e.getMessage(), e);
            return null;
        }
    }

    @Override
    public List<System_user> findUserByRole(String role) {
        String sql = reader.getString("select_system_user_by_role");
        SqlParameterSource bindValues = new MapSqlParameterSource()
                .addValue("role", role);
        try{
            return systemDao.getJdbcTemplate().query(sql, bindValues, new SystemUserMapper());
        }catch(EmptyResultDataAccessException e){
            return null;
        }
    }

    @Override
    public List<System_user> findUserBySn(Set<Integer> sn) {
        String sql = reader.getString("select_system_user_by_several_sn");
        SqlParameterSource bindValues = new MapSqlParameterSource().addValue("sn", sn);
        return systemDao.getJdbcTemplate().query(sql, bindValues, new SystemUserMapper());
    }
}
