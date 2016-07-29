.class public Lcom/meizu/common/util/SDCardHelper;
.super Landroid/content/BroadcastReceiver;
.source "SDCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/SDCardHelper$1;,
        Lcom/meizu/common/util/SDCardHelper$MountPoint;,
        Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;,
        Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/common/util/SDCardHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsMounted:Z

.field private mMountPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/util/SDCardHelper$MountPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

.field private sDescription:Ljava/lang/reflect/Method;

.field private sIsRemovable:Ljava/lang/reflect/Method;

.field private sPath:Ljava/lang/reflect/Method;

.field private sVolumeState:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 29
    new-instance v1, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;-><init>(Lcom/meizu/common/util/SDCardHelper$1;)V

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/SDCardHelper;->getMountPointList(Landroid/content/Context;)Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->isSDCardMounted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 64
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/meizu/common/util/SDCardHelper;

    invoke-direct {v0, p0}, Lcom/meizu/common/util/SDCardHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    .line 47
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/meizu/common/util/SDCardHelper;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    return-object v0
.end method


# virtual methods
.method public getMountPointList(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/util/SDCardHelper$MountPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const-string v10, "storage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 168
    .local v7, "sm":Landroid/os/storage/StorageManager;
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 172
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getVolumeList"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 175
    .local v8, "storageVolumes":[Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 176
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v9, v1, v3

    .line 177
    .local v9, "volume":Ljava/lang/Object;
    new-instance v6, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    invoke-direct {v6, p0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;-><init>(Lcom/meizu/common/util/SDCardHelper;)V

    .line 178
    .local v6, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    if-nez v10, :cond_1

    .line 179
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getDescription"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    .line 180
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getPath"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    .line 181
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "isRemovable"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    .line 182
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getVolumeState"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    .line 184
    :cond_1
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 187
    .local v5, "location":Ljava/lang/String;
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    # invokes: Lcom/meizu/common/util/SDCardHelper$MountPoint;->setDescription(Ljava/lang/String;)V
    invoke-static {v6, v10}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$300(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 189
    # invokes: Lcom/meizu/common/util/SDCardHelper$MountPoint;->setPath(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$400(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 192
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    # invokes: Lcom/meizu/common/util/SDCardHelper$MountPoint;->setMountedState(Ljava/lang/String;)V
    invoke-static {v6, v10}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$500(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 196
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    # invokes: Lcom/meizu/common/util/SDCardHelper$MountPoint;->setExternal(Z)V
    invoke-static {v6, v10}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$600(Lcom/meizu/common/util/SDCardHelper$MountPoint;Z)V

    .line 197
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 200
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "location":Ljava/lang/String;
    .end local v6    # "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .end local v8    # "storageVolumes":[Ljava/lang/Object;
    .end local v9    # "volume":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 207
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    return-object v10

    .line 202
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 204
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method public getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 4

    .prologue
    .line 133
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 134
    .local v1, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    # getter for: Lcom/meizu/common/util/SDCardHelper$MountPoint;->mIsExternal:Z
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/meizu/common/util/SDCardHelper$MountPoint;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$200(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    .end local v1    # "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 4

    .prologue
    .line 157
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 158
    .local v1, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    # getter for: Lcom/meizu/common/util/SDCardHelper$MountPoint;->mIsExternal:Z
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/meizu/common/util/SDCardHelper$MountPoint;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$200(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    .end local v1    # "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStorageMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 3

    .prologue
    .line 145
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 146
    .local v1, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    # getter for: Lcom/meizu/common/util/SDCardHelper$MountPoint;->mIsExternal:Z
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    .end local v1    # "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMounted()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    return v0
.end method

.method public isOtgMounted()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    goto :goto_0
.end method

.method public isSDCardMounted()Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyStateChanged(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mounted"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->notifyStateChanged(Landroid/content/Intent;Z)V

    .line 101
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    .line 69
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/SDCardHelper;->getMountPointList(Landroid/content/Context;)Ljava/util/List;

    .line 75
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iput-boolean v3, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 77
    invoke-virtual {p0, p2, v3}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iput-boolean v2, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 80
    invoke-virtual {p0, p2, v2}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iput-boolean v2, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 83
    invoke-virtual {p0, p2, v2}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public registerStateObserver(Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->registerObserver(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public unregisterStateObserver(Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 97
    return-void
.end method
