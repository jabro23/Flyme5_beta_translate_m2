.class public abstract Lflyme/support/v7/util/ListViewProxy;
.super Ljava/lang/Object;
.source "ListViewProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static mDividerPaddingListenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;


# instance fields
.field protected mAbsList:Landroid/widget/AbsListView;

.field private mIsFlyOS:Z


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "absList"    # Landroid/widget/AbsListView;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lflyme/support/v7/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/util/ListViewProxy;->mIsFlyOS:Z

    .line 23
    return-void
.end method

.method private createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getDividerPadding(I)[I
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 32
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "methodName":Ljava/lang/String;
    const-string v3, "getDividerPadding"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const/4 v3, 0x0

    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lflyme/support/v7/util/ListViewProxy;->getDividerPadding(I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 39
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 36
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDividerPaddingsListener()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 48
    iget-boolean v3, p0, Lflyme/support/v7/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lflyme/support/v7/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ListView;

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 52
    :cond_1
    :try_start_0
    sget-object v3, Lflyme/support/v7/util/ListViewProxy;->mDividerPaddingListenerClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "android.widget.ListView$DividerPadding"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lflyme/support/v7/util/ListViewProxy;->mDividerPaddingListenerClass:Ljava/lang/Class;

    .line 53
    :cond_2
    sget-object v3, Lflyme/support/v7/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 54
    const-class v3, Landroid/widget/ListView;

    const-string v4, "setDividerPadding"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Lflyme/support/v7/util/ListViewProxy;->mDividerPaddingListenerClass:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lflyme/support/v7/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_3
    const/4 v2, 0x0

    .line 65
    .local v2, "result":Z
    :try_start_1
    sget-object v3, Lflyme/support/v7/util/ListViewProxy;->mDividerPaddingListenerClass:Ljava/lang/Class;

    invoke-direct {p0, v3}, Lflyme/support/v7/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "dividerPaddingListener":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 67
    sget-object v3, Lflyme/support/v7/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lflyme/support/v7/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 68
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "dividerPaddingListener":Ljava/lang/Object;
    .end local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    sput-object v8, Lflyme/support/v7/util/ListViewProxy;->mDividerPaddingListenerClass:Ljava/lang/Class;

    .line 60
    sput-object v8, Lflyme/support/v7/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "result":Z
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
