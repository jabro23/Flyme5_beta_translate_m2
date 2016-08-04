.class Lcom/android/browser/provider/CardDBOpenHelper$SQLS;
.super Ljava/lang/Object;
.source "CardDBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/CardDBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SQLS"
.end annotation


# static fields
.field static final CREATE_CARD_DATA:Ljava/lang/String; = "CREATE TABLE card_datas(d_id INTEGER PRIMARY KEY,card_type TEXT,position INTEGER,shown INTEGER,data TEXT,addl_data TEXT,update_time Long);"

.field static final CREATE_KEY_VALUE:Ljava/lang/String; = "CREATE TABLE key_values(key TEXT PRIMARY KEY,value TEXT, UNIQUE (key) ON CONFLICT REPLACE)"

.field static final CREATE_TABLE_CARD:Ljava/lang/String; = "CREATE TABLE cards(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER,icon_url TEXT,name TEXT,type TEXT,summary TEXT,preview_img_url TEXT,detail_url TEXT,redirect_url TEXT,show INTEGER,can_delete INTEGER);"

.field static final CREATE_TABLE_CATEGORY_RANK:Ljava/lang/String; = "CREATE TABLE category_rank(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER DEFAULT 0,category_id INTEGER DEFAULT 0,name TEXT,url TEXT,icon TEXT,summary TEXT,mark_count INTEGER DEFAULT 0,position INTEGER)"

.field static final CREATE_TABLE_RANK:Ljava/lang/String; = "CREATE TABLE rank(_id INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER DEFAULT 0,name TEXT,url TEXT,icon TEXT,summary TEXT,mark_count INTEGER DEFAULT 0,position INTEGER)"

.field static final CREATE_TABLE_SHOTCUT:Ljava/lang/String; = "CREATE TABLE shotcut(_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id TEXT,name TEXT,url TEXT,icon TEXT,type INTEGER DEFAULT 0,cannot_remove INTEGER DEFAULT 0,recommend_time INTEGER DEFAULT 0)"

.field static final CREATE_TAB_CACHE:Ljava/lang/String; = "CREATE TABLE cache(_id integer primary key autoincrement, url TEXT, etag TEXT, serverDate INTEGER, ttl INTEGER, softTtl INTEGER, responseHeaders TEXT, header_length_info TEXT, byte_size INTEGER, tag TEXT, language TEXT, local_update_time INTEGER, data BLOB,  UNIQUE (url) ON CONFLICT REPLACE);"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
