package com.example.demo.dao;

import com.example.demo.eneity.Admin;
import com.example.demo.eneity.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NoticeDao {
    @Autowired
    JdbcTemplate template;

    public int getCount() {
        int count = template.queryForObject("select count(*) from notice", Integer.class);
        return count;
    }

    public List<Notice> getAllNotices(int page, int limit) {
        List<Notice> list = template.query("select * from notice limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Notice.class));
        if (list!=null){
            for (Notice notice:list){
                List<Admin> admin = template.query("select * from admin where id = ?" ,
                        new Object[]{notice.getCreateBy()}, new BeanPropertyRowMapper(Admin.class));
                notice.setCreate_admin(admin.get(0));
                if (notice.getUpdateBy()!=null){
                    List<Admin> admins = template.query("select * from admin where id = ?" ,
                            new Object[]{notice.getUpdateBy()}, new BeanPropertyRowMapper(Admin.class));
                    notice.setUpdate_admin(admins.get(0));
                }
            }
            return list;
        }else{
            return null;
        }
    }

    public int addNotice(Notice notice) {
        return template.update("insert into notice values(null,?,?,?,?,?,?,?)",
                notice.getTitle(),notice.getContent(),notice.getCreateBy(),notice.getCreateTime(),
                notice.getUpdateBy(),notice.getUpdateTime(),notice.getStatus());
    }

    public int updateNotice(Notice notice) {
        return template.update("update notice set `title` = ? ,`content` = ? ,`status` = ?,`updateBy` = ? ,`updateTime` = ? where id = ?",
                notice.getTitle(),notice.getContent(),notice.getStatus(),notice.getUpdateBy(),notice.getUpdateTime(),notice.getId());
    }

    public int delNotice(int id) {
        return template.update("DELETE from notice where id=?",id);
    }

    public int getCount(String name) {
        int count = template.queryForObject("select count(*) from notice where title like '%"+name+"%' ", Integer.class);
        return count;
    }

    public List<Notice> findNotice(int page, int limit, String name) {
        List<Notice> list = template.query("select * from notice where title like '%"+name+"%' limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Notice.class));
        if (list!=null){
            for (Notice notice:list){
                List<Admin> admin = template.query("select * from admin where id = ?" ,
                        new Object[]{notice.getCreateBy()}, new BeanPropertyRowMapper(Admin.class));
                notice.setCreate_admin(admin.get(0));
                if (notice.getUpdateBy()!=null){
                    List<Admin> admins = template.query("select * from admin where id = ?" ,
                            new Object[]{notice.getUpdateBy()}, new BeanPropertyRowMapper(Admin.class));
                    notice.setUpdate_admin(admins.get(0));
                }
            }
            return list;
        }else{
            return null;
        }
    }

    public Notice getNotice() {
        List<Notice> list = template.query("select * from notice where status = 0",
                new BeanPropertyRowMapper(Notice.class));
        if (!list.isEmpty()){
            return list.get(0);
        }else{
            return null;
        }
    }
}
