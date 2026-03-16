package com.soecode.lyf.dao;

import com.soecode.lyf.entity.PaymentOrder;
import org.apache.ibatis.annotations.Param;
import java.util.Date;

public interface PaymentOrderDao {
    PaymentOrder queryByOrderNo(@Param("orderNo") String orderNo);
    int insert(PaymentOrder order);
    int updateStatus(@Param("orderNo") String orderNo, @Param("status") int status, @Param("payTime") Date payTime);
}