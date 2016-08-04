.class public Lflyme/support/v7/util/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# static fields
.field public static mStateSavedField:Ljava/lang/reflect/Field;

.field public static mSupportStateSavedField:Ljava/lang/reflect/Field;


# direct methods
.method private static checkStateSavedField(Ljava/lang/Object;Z)V
    .locals 4
    .param p0, "fragmentManager"    # Ljava/lang/Object;
    .param p1, "isSupport"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_0

    sget-object v3, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    sget-object v3, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    const/4 v2, 0x0

    .line 55
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "clazz":Ljava/lang/Class;
    const-string v3, "mStateSaved"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_1
    if-eqz p1, :cond_3

    sput-object v2, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    sput-object v2, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public static getFragmentsStateSavedValue(Ljava/lang/Object;)I
    .locals 4
    .param p0, "fragmentManager"    # Ljava/lang/Object;

    .prologue
    .line 18
    const/4 v2, 0x0

    .line 19
    .local v2, "isSupport":Z
    instance-of v3, p0, Landroid/support/v4/app/FragmentManager;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 20
    :cond_0
    invoke-static {p0, v2}, Lflyme/support/v7/util/ReflectUtils;->checkStateSavedField(Ljava/lang/Object;Z)V

    .line 23
    if-eqz v2, :cond_1

    :try_start_0
    sget-object v1, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    .line 24
    .local v1, "field":Ljava/lang/reflect/Field;
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 29
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return v3

    .line 23
    :cond_1
    sget-object v1, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 26
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public static setFragmentsStateSavedValue(Ljava/lang/Object;Z)V
    .locals 4
    .param p0, "fragmentManager"    # Ljava/lang/Object;
    .param p1, "value"    # Z

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, "isSupport":Z
    instance-of v3, p0, Landroid/support/v4/app/FragmentManager;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 40
    :cond_0
    invoke-static {p0, v2}, Lflyme/support/v7/util/ReflectUtils;->checkStateSavedField(Ljava/lang/Object;Z)V

    .line 43
    if-eqz v2, :cond_1

    :try_start_0
    sget-object v1, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    .line 44
    .local v1, "field":Ljava/lang/reflect/Field;
    :goto_0
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 48
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 43
    :cond_1
    sget-object v1, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
