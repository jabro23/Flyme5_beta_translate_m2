.class public Lcom/android/providers/downloads/ui/DownloadQuery;
.super Landroid/app/DownloadManager$Query;
.source "DownloadQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;
    }
.end annotation


# static fields
.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mIds:[J

.field private mOnlyIncludeVisibleInDownloadsUi:Z

.field private mOrderByColumn:Ljava/lang/String;

.field private mOrderDirection:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mStatusFlags:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data AS local_filename"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mediaprovider_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "notificationpackage"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "allowed_network_types"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mimetype AS media_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "total_bytes AS total_size"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lastmod AS last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "current_bytes AS bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "md5"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\'placeholder\' AS local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\'placeholder\' AS reason"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadQuery;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 20
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mBaseUri:Landroid/net/Uri;

    .line 21
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mIds:[J

    .line 22
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    .line 23
    const-string v0, "lastmod"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderByColumn:Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderDirection:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mResolver:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method

.method private getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .param p1, "ids"    # [J

    .prologue
    .line 359
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 360
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 361
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-object v1
.end method

.method private getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .param p1, "ids"    # [J

    .prologue
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 345
    if-lez v0, :cond_0

    .line 346
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 327
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    .local v3, "part":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const/4 v1, 0x0

    .line 333
    goto :goto_0

    .line 334
    .end local v3    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method downloadRunQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 278
    move-object v1, p3

    .line 279
    .local v1, "uri":Landroid/net/Uri;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v8, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 281
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mIds:[J

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mIds:[J

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadQuery;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mIds:[J

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadQuery;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 287
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v7, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 289
    const-string v0, "="

    const/16 v2, 0xbe

    invoke-direct {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "="

    const/16 v2, 0xc0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 295
    const-string v0, "="

    const/16 v2, 0xc1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v0, "="

    const/16 v2, 0xc2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const-string v0, "="

    const/16 v2, 0xc3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    const-string v0, "="

    const/16 v2, 0xc4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 301
    const-string v0, "="

    const/16 v2, 0xc8

    invoke-direct {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">="

    const/16 v9, 0x190

    invoke-direct {p0, v2, v9}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<"

    const/16 v9, 0x258

    invoke-direct {p0, v2, v9}, Lcom/android/providers/downloads/ui/DownloadQuery;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_5
    const-string v0, " OR "

    invoke-direct {p0, v0, v7}, Lcom/android/providers/downloads/ui/DownloadQuery;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v7    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOnlyIncludeVisibleInDownloadsUi:Z

    if-eqz v0, :cond_7

    .line 311
    const-string v0, "is_visible_in_downloads_ui != \'0\'"

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_7
    const-string v0, "deleted != \'1\'"

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v0, " AND "

    invoke-direct {p0, v0, v8}, Lcom/android/providers/downloads/ui/DownloadQuery;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "selection":Ljava/lang/String;
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderDirection:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    const-string v6, "ASC"

    .line 319
    .local v6, "orderDirection":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "orderBy":Ljava/lang/String;
    move-object v0, p1

    move-object v2, p2

    .line 321
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 318
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "orderDirection":Ljava/lang/String;
    :cond_8
    const-string v6, "DESC"

    goto :goto_0
.end method

.method public bridge synthetic orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadQuery;->orderBy(Ljava/lang/String;I)Lcom/android/providers/downloads/ui/DownloadQuery;

    move-result-object v0

    return-object v0
.end method

.method public orderBy(Ljava/lang/String;I)Lcom/android/providers/downloads/ui/DownloadQuery;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .prologue
    .line 103
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "lastmod"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderByColumn:Ljava/lang/String;

    .line 116
    :goto_0
    iput p2, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderDirection:I

    .line 117
    return-object p0

    .line 109
    :cond_1
    const-string v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const-string v0, "total_bytes"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Lcom/android/providers/downloads/ui/DownloadQuery;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Lcom/android/providers/downloads/ui/DownloadQuery;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/providers/downloads/ui/DownloadQuery;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadQuery;->downloadRunQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs setFilterById([J)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "ids"    # [J

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mIds:[J

    .line 63
    return-object p0
.end method

.method public setFilterByStatus(I)Landroid/app/DownloadManager$Query;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mStatusFlags:Ljava/lang/Integer;

    .line 74
    return-object p0
.end method

.method public bridge synthetic setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery;->setOnlyIncludeVisibleInDownloadsUi(Z)Lcom/android/providers/downloads/ui/DownloadQuery;

    move-result-object v0

    return-object v0
.end method

.method public setOnlyIncludeVisibleInDownloadsUi(Z)Lcom/android/providers/downloads/ui/DownloadQuery;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadQuery;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 88
    return-object p0
.end method
