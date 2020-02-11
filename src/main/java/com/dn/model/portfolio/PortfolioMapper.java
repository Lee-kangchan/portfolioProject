package com.dn.model.portfolio;

import java.util.List;

public interface PortfolioMapper {

    List<PortfolioVO> getPortfolio(String id);
}
