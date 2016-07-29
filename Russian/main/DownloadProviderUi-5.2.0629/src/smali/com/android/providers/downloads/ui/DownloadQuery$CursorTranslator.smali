.class Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/android/providers/downloads/ui/DownloadQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 140
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 141
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 212
    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    .line 215
    :cond_1
    int-to-long v0, p1

    .line 245
    :goto_0
    return-wide v0

    .line 218
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 245
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 220
    :sswitch_0
    const-wide/16 v0, 0x3e9

    goto :goto_0

    .line 224
    :sswitch_1
    const-wide/16 v0, 0x3ea

    goto :goto_0

    .line 227
    :sswitch_2
    const-wide/16 v0, 0x3ec

    goto :goto_0

    .line 230
    :sswitch_3
    const-wide/16 v0, 0x3ed

    goto :goto_0

    .line 233
    :sswitch_4
    const-wide/16 v0, 0x3ee

    goto :goto_0

    .line 236
    :sswitch_5
    const-wide/16 v0, 0x3ef

    goto :goto_0

    .line 239
    :sswitch_6
    const-wide/16 v0, 0x3f0

    goto :goto_0

    .line 242
    :sswitch_7
    const-wide/16 v0, 0x3f1

    goto :goto_0

    .line 218
    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_5
        0x1e8 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1ec -> :sswitch_0
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f1 -> :sswitch_3
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 8

    .prologue
    .line 166
    const-string v5, "destination"

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 167
    .local v0, "destinationType":J
    const-wide/16 v6, 0x4

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x6

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 170
    :cond_0
    const-string v5, "local_filename"

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "localPath":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 172
    const/4 v5, 0x0

    .line 179
    .end local v4    # "localPath":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 174
    .restart local v4    # "localPath":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 178
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_2
    const-string v5, "_id"

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 179
    .local v2, "downloadId":J
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getPausedReason(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 207
    const-wide/16 v0, 0x4

    :goto_0
    return-wide v0

    .line 198
    :pswitch_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 201
    :pswitch_1
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 204
    :pswitch_2
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 191
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 185
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_0

    .line 188
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private translateStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 267
    :pswitch_0
    sget-boolean v0, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :pswitch_1
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 255
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 261
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 264
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 268
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getReason(I)J

    move-result-wide v0

    .line 155
    :goto_0
    return-wide v0

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
