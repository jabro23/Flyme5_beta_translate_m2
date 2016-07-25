.class public Lcom/android/browser/provider/CardProvider;
.super Lcom/android/browser/provider/SQLiteContentProvider;
.source "CardProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "card"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CACHE_TABLE:Ljava/lang/String; = "cache"

.field private static final CARD_DATA_TABLE:Ljava/lang/String; = "card_data"

.field private static final CARD_INFO_TABLE:Ljava/lang/String; = "card_info"

.field private static final CATEGORY_RANK_TABLE:Ljava/lang/String; = "category_rank"

.field private static final KEY_VALUE_TABLE:Ljava/lang/String; = "key_value"

.field private static final MATCH_CACHE_TABLE:I = 0xfa1

.field private static final MATCH_CARD_DATA:I = 0x2002

.field private static final MATCH_CARD_INFO:I = 0x2001

.field private static final MATCH_CATEGORY_RANK_TABLE:I = 0x1b59

.field private static final MATCH_KEY_VALUE_TABLE:I = 0x2011

.field private static final MATCH_RANK_TABLE:I = 0x1389

.field private static final MATCH_RAW_QUERY:I = 0xbb9

.field private static final MATCH_SHOTCUT_TABLE:I = 0x1771

.field private static final MATCH_TABLE_SEACH_WEBSITE:I = 0x7d3

.field private static final RANK_TABLE:Ljava/lang/String; = "rank"

.field private static final RAW_QUERY:Ljava/lang/String; = "raw_query"

.field private static final SEARCH_WEBSITE:Ljava/lang/String; = "search_website"

.field private static final SHOTCUT_TABLE:Ljava/lang/String; = "shotcut"

.field public static final URI_CACHE_TABLE:Landroid/net/Uri;

.field public static final URI_CARD_DATA:Landroid/net/Uri;

.field public static final URI_CARD_INFO:Landroid/net/Uri;

.field public static final URI_CATEGORY_RANK_TABLE:Landroid/net/Uri;

.field public static final URI_KEY_VALUE_TABLE:Landroid/net/Uri;

.field static final URI_MATCHER:Landroid/content/UriMatcher;

.field public static final URI_RANK_TABLE:Landroid/net/Uri;

.field public static final URI_RAW_QUERY:Landroid/net/Uri;

.field public static final URI_SEARCH_WEBSITE:Landroid/net/Uri;

.field public static final URI_SHOTCUT_TABLE:Landroid/net/Uri;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-string v0, "content://card"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    .line 39
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "card_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_CARD_INFO:Landroid/net/Uri;

    .line 43
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "card_data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_CARD_DATA:Landroid/net/Uri;

    .line 47
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "search_website"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_SEARCH_WEBSITE:Landroid/net/Uri;

    .line 51
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "key_value"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_KEY_VALUE_TABLE:Landroid/net/Uri;

    .line 55
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "raw_query"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_RAW_QUERY:Landroid/net/Uri;

    .line 59
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "cache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_CACHE_TABLE:Landroid/net/Uri;

    .line 63
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "rank"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_RANK_TABLE:Landroid/net/Uri;

    .line 67
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "shotcut"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_SHOTCUT_TABLE:Landroid/net/Uri;

    .line 71
    sget-object v0, Lcom/android/browser/provider/CardProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "category_rank"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_CATEGORY_RANK_TABLE:Landroid/net/Uri;

    .line 75
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/provider/CardProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 77
    sget-object v0, Lcom/android/browser/provider/CardProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 79
    const-string v1, "card"

    const-string v2, "card_info"

    const/16 v3, 0x2001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    const-string v1, "card"

    const-string v2, "card_data"

    const/16 v3, 0x2002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    const-string v1, "card"

    const-string v2, "key_value"

    const/16 v3, 0x2011

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    const-string v1, "card"

    const-string v2, "search_website"

    const/16 v3, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    const-string v1, "card"

    const-string v2, "raw_query"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    const-string v1, "card"

    const-string v2, "cache"

    const/16 v3, 0xfa1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    const-string v1, "card"

    const-string v2, "rank"

    const/16 v3, 0x1389

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    const-string v1, "card"

    const-string v2, "shotcut"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    const-string v1, "card"

    const-string v2, "category_rank"

    const/16 v3, 0x1b59

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/browser/provider/SQLiteContentProvider;-><init>()V

    return-void
.end method

.method private getMatchTable(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    sparse-switch p1, :sswitch_data_0

    .line 132
    :goto_0
    return-object v0

    .line 106
    :sswitch_0
    const-string v0, "cards"

    goto :goto_0

    .line 109
    :sswitch_1
    const-string v0, "card_datas"

    goto :goto_0

    .line 112
    :sswitch_2
    const-string v0, "key_values"

    goto :goto_0

    .line 118
    :sswitch_3
    const-string v0, "cache"

    goto :goto_0

    .line 121
    :sswitch_4
    const-string v0, "rank"

    goto :goto_0

    .line 124
    :sswitch_5
    const-string v0, "shotcut"

    goto :goto_0

    .line 127
    :sswitch_6
    const-string v0, "category_rank"

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0xfa1 -> :sswitch_3
        0x1389 -> :sswitch_4
        0x1771 -> :sswitch_5
        0x1b59 -> :sswitch_6
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_1
        0x2011 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/android/browser/provider/CardProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/android/browser/provider/CardProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 181
    invoke-direct {p0, v0}, Lcom/android/browser/provider/CardProvider;->getMatchTable(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 187
    if-lez v0, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/CardProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 190
    :cond_0
    return v0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown insert URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/provider/CardProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/browser/provider/CardDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/android/browser/provider/CardDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/provider/CardProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/browser/provider/CardProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 137
    sget-object v1, Lcom/android/browser/provider/CardProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/browser/provider/CardProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 141
    invoke-direct {p0, v1}, Lcom/android/browser/provider/CardProvider;->getMatchTable(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v2, v1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 148
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/CardProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 150
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown insert URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/browser/provider/CardProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 197
    sget-object v0, Lcom/android/browser/provider/CardProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 198
    const/16 v0, 0xbb9

    if-ne v2, v0, :cond_0

    .line 199
    invoke-virtual {v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 202
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 203
    const-string v3, "limit"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    const-string v3, "groupBy"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-direct {p0, v2}, Lcom/android/browser/provider/CardProvider;->getMatchTable(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 212
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown insert URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 3

    .prologue
    .line 158
    sget-object v0, Lcom/android/browser/provider/CardProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/browser/provider/CardProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 162
    invoke-direct {p0, v0}, Lcom/android/browser/provider/CardProvider;->getMatchTable(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 168
    if-lez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/CardProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 171
    :cond_0
    return v0

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown insert URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
