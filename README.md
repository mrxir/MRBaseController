# MRBaseController

在控制器中方便的使用应用程序的生命周期，将页面的生命周期和app的生命周期搭建一个桥梁，需要继承MRBaseController重写以下方法：
• - (void)appWillTerminate;
• - (void)appWillActive;
• - (void)appDidActive;
• - (void)appWillInactive;
• - (void)appDidInactive;
