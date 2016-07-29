.class public Lcom/android/providers/downloads/ui/DownloadRequest;
.super Landroid/app/DownloadManager$Request;
.source "DownloadRequest.java"


# static fields
.field public static sDestinationUriField:Ljava/lang/reflect/Field;

.field public static sToContentValuesMethod:Ljava/lang/reflect/Method;

.field public static sUriField:Ljava/lang/reflect/Field;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileNameHint:Ljava/lang/String;

.field private mIsDownloadByPath:Z

.field private mIsSystem:Z

.field private mJsonArrayStr:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mTotleBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/android/providers/downloads/ui/DownloadRequest;->sToContentValuesMethod:Ljava/lang/reflect/Method;

    .line 42
    sput-object v0, Lcom/android/providers/downloads/ui/DownloadRequest;->sUriField:Ljava/lang/reflect/Field;

    .line 43
    sput-object v0, Lcom/android/providers/downloads/ui/DownloadRequest;->sDestinationUriField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 37
    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mIsSystem:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mIsDownloadByPath:Z

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mTotleBytes:J

    .line 49
    return-void
.end method

.method private static getDestinationUri(Landroid/app/DownloadManager$Request;)Landroid/net/Uri;
    .locals 3
    .param p0, "request"    # Landroid/app/DownloadManager$Request;

    .prologue
    .line 182
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/ui/DownloadRequest;->sDestinationUriField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 183
    const-string v1, "android.app.DownloadManager$Request"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mDestinationUri"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/providers/downloads/ui/DownloadRequest;->sDestinationUriField:Ljava/lang/reflect/Field;

    .line 185
    sget-object v1, Lcom/android/providers/downloads/ui/DownloadRequest;->sDestinationUriField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    :cond_0
    sget-object v1, Lcom/android/providers/downloads/ui/DownloadRequest;->sDestinationUriField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "DownloadRequest"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewVersion()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "support":Z
    const/4 v1, 0x0

    .line 199
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.providers.downloads"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x55

    if-lt v4, v5, :cond_0

    .line 202
    const/4 v2, 0x1

    .line 208
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v4, Lcom/android/providers/downloads/Constants;->ENABLE_INNNER_REPLACE:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public enqueue(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/providers/downloads/ui/DownloadRequest;->toContentValuesInfoCenter(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 175
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 176
    .local v0, "downloadUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 177
    .local v2, "id":J
    return-wide v2
.end method

.method public setFileNameHint(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "fileNameHint"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mFileNameHint:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public toContentValuesInfoCenter(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 121
    const/4 v3, 0x0

    .line 123
    .local v3, "values":Landroid/content/ContentValues;
    :try_start_0
    sget-object v4, Lcom/android/providers/downloads/ui/DownloadRequest;->sToContentValuesMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 124
    const-string v4, "android.app.DownloadManager$Request"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "toContentValues"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/providers/downloads/ui/DownloadRequest;->sToContentValuesMethod:Ljava/lang/reflect/Method;

    .line 126
    sget-object v4, Lcom/android/providers/downloads/ui/DownloadRequest;->sToContentValuesMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 128
    :cond_0
    sget-object v4, Lcom/android/providers/downloads/ui/DownloadRequest;->sToContentValuesMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    const-string v4, "system"

    iget-boolean v5, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mIsSystem:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mJsonArrayStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    const-string v4, "json_param"

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mJsonArrayStr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 137
    const-string v4, "_data"

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-wide v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mTotleBytes:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 140
    const-string v4, "total_bytes"

    iget-wide v6, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mTotleBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadRequest;->isNewVersion()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mJsonArrayStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 144
    const-string v4, "json_param"

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mJsonArrayStr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DownloadRequest;->getDestinationUri(Landroid/app/DownloadManager$Request;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_5

    .line 148
    const-string v4, "destination"

    const/16 v5, 0x78

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mFileNameHint:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 151
    const-string v4, "hint"

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mFileNameHint:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_5
    :goto_1
    return-object v3

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    const-string v4, "DownloadRequest"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_6
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mFileNameHint:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 156
    const-string v4, "destination"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v4, "hint"

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mFileNameHint:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_7
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DownloadRequest;->getDestinationUri(Landroid/app/DownloadManager$Request;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 159
    if-eqz p1, :cond_5

    const-string v4, "com.android.browser"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadRequest;->mIsDownloadByPath:Z

    if-nez v4, :cond_5

    .line 161
    const-string v4, "destination"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 164
    :cond_8
    if-eqz p1, :cond_5

    const-string v4, "com.android.browser"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    const-string v4, "destination"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method
