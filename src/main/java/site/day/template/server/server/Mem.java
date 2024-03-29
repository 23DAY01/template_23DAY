package site.day.template.server.server;


import site.day.template.utils.ArithmeticUtil;

/**
 * @Description Mem
 * @ClassName Mem
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
public class Mem
{
    /**
     * 内存总量
     */
    private double total;

    /**
     * 已用内存
     */
    private double used;

    /**
     * 剩余内存
     */
    private double free;

    public double getTotal()
    {
        return ArithmeticUtil.div(total, (1024 * 1024 * 1024), 2);
    }

    public void setTotal(long total)
    {
        this.total = total;
    }

    public double getUsed()
    {
        return ArithmeticUtil.div(used, (1024 * 1024 * 1024), 2);
    }

    public void setUsed(long used)
    {
        this.used = used;
    }

    public double getFree()
    {
        return ArithmeticUtil.div(free, (1024 * 1024 * 1024), 2);
    }

    public void setFree(long free)
    {
        this.free = free;
    }

    public double getUsage()
    {
        return ArithmeticUtil.mul(ArithmeticUtil.div(used, total, 4), 100);
    }
}
