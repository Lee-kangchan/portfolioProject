package com.dn.model.portfolio;

import com.dn.model.user.UserVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class PortfolioDAO {

    @Autowired
    SqlSession mybatis;

    public List<PortfolioVO> getPortfolio(String id){
        PortfolioMapper mapper = mybatis.getMapper(PortfolioMapper.class);
        List<PortfolioVO> portfolioVO = mapper.getPortfolio(id);
        return portfolioVO;
    }
}
