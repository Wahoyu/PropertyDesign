package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Admin;
import com.example.demo.eneity.Notice;
import com.example.demo.mapper.AdminMapper;
import com.example.demo.mapper.NoticeMapper;
import com.example.demo.service.NoticeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {
    @Resource
    NoticeMapper mapper;

    @Resource
    AdminMapper adminMapper;

    //获取notice表中的所有数据
    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    //对notice整张表进行分页查询
    public List<Notice> getAllNotices(int page, int limit) {
        //分页查询
        Page<Notice> p = new Page<>(page, limit);
        List<Notice> list = mapper.selectPage(p,null).getRecords();
        System.out.println(list);
        //如果list不为空,添加user
        if (list!=null){
            for (Notice notice:list){
                QueryWrapper<Admin> wrapper = new QueryWrapper<>();
                wrapper.eq("id", notice.getCreateBy());
                Admin admin = adminMapper.selectOne(wrapper);
                notice.setCreate_admin(admin);
            }
            for (Notice notice:list){
                QueryWrapper<Admin> wrapper2 = new QueryWrapper<>();
                wrapper2.eq("id", notice.getUpdateBy());
                Admin admin = adminMapper.selectOne(wrapper2);
                notice.setUpdate_admin(admin);
            }
            return list;
        }else{
            return null;
        }
    }

    //添加公告
    public int addNotice(Notice notice) {
        return mapper.insert(notice);
    }

    //更新公告
    public int updateNotice(Notice notice) {
        QueryWrapper<Admin> wrapper = new QueryWrapper<>();
        wrapper.eq("id", notice.getUpdateBy());
        Admin admin = adminMapper.selectOne(wrapper);
        notice.setUpdate_admin(admin);
        return mapper.updateById(notice);
    }

    //删除公告
    public int delNotice(int id) {
        return mapper.deleteById(id);
    }

    //通过title进行模糊获取
    public int getCount(String name) {
        QueryWrapper<Notice> wrapper = new QueryWrapper<>();
        wrapper.like("title", name);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //通过title模糊,分页查询公告
    public List<Notice> findNotice(int page, int limit, String name) {
        //分页查询
        Page<Notice> p = new Page<>(page, limit);

        //对name进行模糊匹配
        QueryWrapper<Notice> wrapper3 = new QueryWrapper<>();
        wrapper3.like("title", name);

        List<Notice> list = mapper.selectPage(p,wrapper3).getRecords();
        System.out.println(list);
        //如果list不为空,添加user
        if (list!=null){
            for (Notice notice:list){
                QueryWrapper<Admin> wrapper = new QueryWrapper<>();
                wrapper.eq("id", notice.getCreateBy());
                Admin admin = adminMapper.selectOne(wrapper);
                notice.setCreate_admin(admin);
            }
            for (Notice notice:list){
                QueryWrapper<Admin> wrapper2 = new QueryWrapper<>();
                wrapper2.eq("id", notice.getUpdateBy());
                Admin admin = adminMapper.selectOne(wrapper2);
                notice.setUpdate_admin(admin);
            }
            return list;
        }else{
            return null;
        }
    }

    //查询status为0的公告list的头一个
    //用户查看公告
    public Notice getNotice() {
        QueryWrapper<Notice> wrapper = new QueryWrapper<>();
        wrapper.eq("status",0);
        List<Notice> noticeList = mapper.selectList(wrapper);
        return noticeList.get(0);
    }

    @Override
    public List<Notice> showUserAdmin() {
        QueryWrapper<Notice> wrapper = new QueryWrapper<>();
        wrapper.eq("status",0);
        return mapper.selectList(wrapper);
    }

}
