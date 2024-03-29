package site.day.template.utils;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.Objects;

/**
 * @Description 分页工具，每个线程分配一个page
 * 可以实现service和controller的数据共享，而不影响javaBean的转换
 * @ClassName PageUtil
 * @Author 23DAY
 * @Date 2023/1/25 22:04
 * @Version 1.0
 */
public class PageUtil {
    private static final ThreadLocal<Page<?>> PAGE_HOLDER = new ThreadLocal<>();

    public static void setPage(Page<?> page) {
        PAGE_HOLDER.set(page);
    }

    public static Page<?> getPage() {
        Page<?> page = PAGE_HOLDER.get();
        if (Objects.isNull(page)) {
            setPage(new Page<>());
        }
        return PAGE_HOLDER.get();
    }

    public static Long getCurrent() {
        return getPage().getCurrent();
    }

    public static void setCurrent(Long current) {
        getPage().setCurrent(current);
    }

    public static Long getSize() {
        return getPage().getSize();
    }

    public static void setSize(Long size) {
        getPage().setSize(size);
    }

    public static Long getTotal() {
        return getPage().getTotal();
    }

    public static void setTotal(Long total) {
        getPage().setTotal(total);
    }

    public static Long getLimitCurrent() {
        return (getCurrent() - 1) * getSize();
    }

    public static void remove() {
        PAGE_HOLDER.remove();
    }
}
