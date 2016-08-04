.class public Lcom/android/browser/provider/CardDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CardDBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/provider/CardDBOpenHelper$SQLS;,
        Lcom/android/browser/provider/CardDBOpenHelper$CategoryRankTab;,
        Lcom/android/browser/provider/CardDBOpenHelper$ShotcutTab;,
        Lcom/android/browser/provider/CardDBOpenHelper$RankTab;,
        Lcom/android/browser/provider/CardDBOpenHelper$CacheTab;,
        Lcom/android/browser/provider/CardDBOpenHelper$SearchWebsiteTable;,
        Lcom/android/browser/provider/CardDBOpenHelper$KeyValueTable;,
        Lcom/android/browser/provider/CardDBOpenHelper$CardDataTable;,
        Lcom/android/browser/provider/CardDBOpenHelper$CardInfoTable;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "cards.db"

.field private static final DB_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CardDBOpenHelper"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/browser/provider/CardDBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 257
    const-string v0, "cards.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 258
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 262
    const-string v0, "CREATE TABLE cards(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER,icon_url TEXT,name TEXT,type TEXT,summary TEXT,preview_img_url TEXT,detail_url TEXT,redirect_url TEXT,show INTEGER,can_delete INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const-string v0, "CREATE TABLE card_datas(d_id INTEGER PRIMARY KEY,card_type TEXT,position INTEGER,shown INTEGER,data TEXT,addl_data TEXT,update_time Long);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    const-string v0, "CREATE TABLE key_values(key TEXT PRIMARY KEY,value TEXT, UNIQUE (key) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const-string v0, "CREATE TABLE cache(_id integer primary key autoincrement, url TEXT, etag TEXT, serverDate INTEGER, ttl INTEGER, softTtl INTEGER, responseHeaders TEXT, header_length_info TEXT, byte_size INTEGER, tag TEXT, language TEXT, local_update_time INTEGER, data BLOB,  UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "CREATE TABLE rank(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER DEFAULT 0,name TEXT,url TEXT,icon TEXT,summary TEXT,mark_count INTEGER DEFAULT 0,position INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v0, "CREATE TABLE shotcut(_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id TEXT,name TEXT,url TEXT,icon TEXT,type INTEGER DEFAULT 0,cannot_remove INTEGER DEFAULT 0,recommend_time INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v0, "CREATE TABLE category_rank(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER DEFAULT 0,category_id INTEGER DEFAULT 0,name TEXT,url TEXT,icon TEXT,summary TEXT,mark_count INTEGER DEFAULT 0,position INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 277
    const-string v0, "CREATE TABLE cache(_id integer primary key autoincrement, url TEXT, etag TEXT, serverDate INTEGER, ttl INTEGER, softTtl INTEGER, responseHeaders TEXT, header_length_info TEXT, byte_size INTEGER, tag TEXT, language TEXT, local_update_time INTEGER, data BLOB,  UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    const-string v0, "CREATE TABLE rank(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER DEFAULT 0,name TEXT,url TEXT,icon TEXT,summary TEXT,mark_count INTEGER DEFAULT 0,position INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string v0, "CREATE TABLE shotcut(_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id TEXT,name TEXT,url TEXT,icon TEXT,type INTEGER DEFAULT 0,cannot_remove INTEGER DEFAULT 0,recommend_time INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    const-string v0, "CREATE TABLE category_rank(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER DEFAULT 0,category_id INTEGER DEFAULT 0,name TEXT,url TEXT,icon TEXT,summary TEXT,mark_count INTEGER DEFAULT 0,position INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x1

    .line 283
    :cond_0
    const/4 v1, 0x3

    if-ge p2, v1, :cond_1

    .line 284
    if-nez v0, :cond_1

    .line 285
    const-string v1, "ALTER TABLE shotcut ADD cannot_remove INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    :cond_1
    const/4 v1, 0x4

    if-ge p2, v1, :cond_2

    .line 289
    const-string v1, "ALTER TABLE card_datas ADD card_type TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string v1, "DELETE FROM cards"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    const-string v1, "DELETE FROM card_datas"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    const-string v1, "DELETE FROM cache"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const-string v1, "DELETE FROM key_values WHERE key = \'last_background_url\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    :cond_2
    const/4 v1, 0x5

    if-ge p2, v1, :cond_3

    .line 296
    if-nez v0, :cond_3

    .line 297
    const-string v0, "ALTER TABLE shotcut ADD recommend_time INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    :cond_3
    return-void
.end method
