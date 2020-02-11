package com.dn.model.portfolio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("PortfolioService")
public class PortfolioServiceImpl implements PortfolioService{

    @Autowired
    PortfolioDAO portfolioDAO;

    @Override
    public List<PortfolioVO> getPortfolio(String id) {
        return portfolioDAO.getPortfolio(id);
    }
}
