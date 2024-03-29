package site.day.template.server.server;


import site.day.template.constant.DateConst;
import site.day.template.utils.ArithmeticUtil;
import site.day.template.utils.DateUtil;

import java.lang.management.ManagementFactory;
import java.util.Date;

/**
 * @Description Jvm
 * @ClassName Jvm
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
public class Jvm
{
    /**
     * 当前JVM占用的内存总数(M)
     */
    private double total;

    /**
     * JVM最大可用内存总数(M)
     */
    private double max;

    /**
     * JVM空闲内存(M)
     */
    private double free;

    /**
     * JDK版本
     */
    private String version;

    /**
     * JDK路径
     */
    private String home;

    public double getTotal()
    {
        return ArithmeticUtil.div(total, (1024 * 1024), 2);
    }

    public void setTotal(double total)
    {
        this.total = total;
    }

    public double getMax()
    {
        return ArithmeticUtil.div(max, (1024 * 1024), 2);
    }

    public void setMax(double max)
    {
        this.max = max;
    }

    public double getFree()
    {
        return ArithmeticUtil.div(free, (1024 * 1024), 2);
    }

    public void setFree(double free)
    {
        this.free = free;
    }

    public double getUsed()
    {
        return ArithmeticUtil.div(total - free, (1024 * 1024), 2);
    }

    public double getUsage()
    {
        return ArithmeticUtil.mul(ArithmeticUtil.div(total - free, total, 4), 100);
    }

    /**
     * 获取JDK名称
     */
    public String getName()
    {
        return ManagementFactory.getRuntimeMXBean().getVmName();
    }

    public String getVersion()
    {
        return version;
    }

    public void setVersion(String version)
    {
        this.version = version;
    }

    public String getHome()
    {
        return home;
    }

    public void setHome(String home)
    {
        this.home = home;
    }

    /**
     * JDK启动时间
     */
    public String getStartTime()
    {
        return DateUtil.parseDateToStr(DateConst.YYYY_MM_DD_HH_MM_SS, getServerStartDate());
    }

    /**
     * JDK运行时间
     */
    public String getRunTime()
    {
        return DateUtil.getDateBetween(DateUtil.getNow(), getServerStartDate());
    }

    /**
     * 运行参数
     */
    public String getInputArgs()
    {
        return ManagementFactory.getRuntimeMXBean().getInputArguments().toString();
    }

    public Date getServerStartDate()
    {
        long time = ManagementFactory.getRuntimeMXBean().getStartTime();
        return new Date(time);
    }
}
