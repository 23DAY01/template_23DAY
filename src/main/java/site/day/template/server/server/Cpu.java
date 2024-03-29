package site.day.template.server.server;

import site.day.template.utils.ArithmeticUtil;

/**
 * @Description Cpu
 * @ClassName Cpu
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
public class Cpu
{
    /**
     * 核心数
     */
    private int cpuNum;

    /**
     * CPU总的使用率
     */
    private double total;

    /**
     * CPU系统使用率
     */
    private double sys;

    /**
     * CPU用户使用率
     */
    private double used;

    /**
     * CPU当前等待率
     */
    private double wait;

    /**
     * CPU当前空闲率
     */
    private double free;

    public int getCpuNum()
    {
        return cpuNum;
    }

    public void setCpuNum(int cpuNum)
    {
        this.cpuNum = cpuNum;
    }

    public double getTotal()
    {
        return ArithmeticUtil.round(ArithmeticUtil.mul(total, 100), 2);
    }

    public void setTotal(double total)
    {
        this.total = total;
    }

    public double getSys()
    {
        return ArithmeticUtil.round(ArithmeticUtil.mul(sys / total, 100), 2);
    }

    public void setSys(double sys)
    {
        this.sys = sys;
    }

    public double getUsed()
    {
        return ArithmeticUtil.round(ArithmeticUtil.mul(used / total, 100), 2);
    }

    public void setUsed(double used)
    {
        this.used = used;
    }

    public double getWait()
    {
        return ArithmeticUtil.round(ArithmeticUtil.mul(wait / total, 100), 2);
    }

    public void setWait(double wait)
    {
        this.wait = wait;
    }

    public double getFree()
    {
        return ArithmeticUtil.round(ArithmeticUtil.mul(free / total, 100), 2);
    }

    public void setFree(double free)
    {
        this.free = free;
    }
}
