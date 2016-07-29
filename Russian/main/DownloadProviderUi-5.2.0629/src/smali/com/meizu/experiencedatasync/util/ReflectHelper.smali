.class public Lcom/meizu/experiencedatasync/util/ReflectHelper;
.super Ljava/lang/Object;
.source "ReflectHelper.java"


# static fields
.field private static sReflectClassCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sReflectMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    return-void
.end method

.method private static getParamsTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .param p0, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Class;

    .line 69
    .local v1, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 70
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method

.method private static invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "className":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    .local v4, "key":Ljava/lang/String;
    if-eqz p3, :cond_0

    array-length v9, p3

    if-nez v9, :cond_2

    .line 20
    :cond_0
    sget-object v9, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 21
    .local v8, "temp":Ljava/lang/Object;
    if-eqz v8, :cond_1

    instance-of v9, v8, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_1

    .line 22
    check-cast v8, Ljava/lang/reflect/Method;

    .end local v8    # "temp":Ljava/lang/Object;
    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 42
    :goto_0
    return-object v9

    .line 24
    .restart local v8    # "temp":Ljava/lang/Object;
    :cond_1
    new-array v9, v10, [Ljava/lang/Class;

    invoke-virtual {p0, p2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 25
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 26
    sget-object v9, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v9, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 29
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "temp":Ljava/lang/Object;
    :cond_2
    invoke-static {p3}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->getParamsTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v7

    .line 30
    .local v7, "paramsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v7, :cond_3

    .line 31
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 32
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    sget-object v9, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 36
    .restart local v8    # "temp":Ljava/lang/Object;
    if-eqz v8, :cond_4

    instance-of v9, v8, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_4

    .line 37
    check-cast v8, Ljava/lang/reflect/Method;

    .end local v8    # "temp":Ljava/lang/Object;
    invoke-virtual {v8, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 39
    .restart local v8    # "temp":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, p2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 40
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 41
    sget-object v9, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v9, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v6, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0
.end method

.method public static invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 62
    .restart local v0    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {v0, v0, p1, p2}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
