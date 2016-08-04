.class Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UsageStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    const-string v0, "UsageStats.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 327
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 331
    const-string v0, "CREATE TABLE IF NOT EXISTS event (_id INTEGER DEFAULT \'1\' NOT NULL PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL,type INTEGER NOT NULL,package TEXT NOT NULL,sessionid TEXT NOT NULL,time LONG,page TEXT,properties TEXT,network TEXT,channel LONG,flyme_version TEXT,package_version TEXT,event_source TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 337
    const-string v0, "DROP TABLE IF EXISTS event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 339
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 343
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 345
    const-string v0, "ALTER TABLE event RENAME TO temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    const-string v0, "CREATE TABLE IF NOT EXISTS event (_id INTEGER DEFAULT \'1\' NOT NULL PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL,type INTEGER NOT NULL,package TEXT NOT NULL,sessionid TEXT NOT NULL,time LONG,page TEXT,properties TEXT,network TEXT,channel LONG,flyme_version TEXT,package_version TEXT,event_source TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    const-string v0, "INSERT INTO event(_id,name,type,package,sessionid,time,page,properties)  SELECT *  FROM temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v0, "DROP TABLE IF EXISTS temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 350
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 353
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 354
    const-string v0, "ALTER TABLE event RENAME TO temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    const-string v0, "CREATE TABLE IF NOT EXISTS event (_id INTEGER DEFAULT \'1\' NOT NULL PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL,type INTEGER NOT NULL,package TEXT NOT NULL,sessionid TEXT NOT NULL,time LONG,page TEXT,properties TEXT,network TEXT,channel LONG,flyme_version TEXT,package_version TEXT,event_source TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    const-string v0, "INSERT INTO event(_id,name,type,package,sessionid,time,page,properties,network,channel,flyme_version)  SELECT *  FROM temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const-string v0, "DROP TABLE IF EXISTS temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 359
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 361
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 363
    const-string v0, "ALTER TABLE event RENAME TO temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v0, "CREATE TABLE IF NOT EXISTS event (_id INTEGER DEFAULT \'1\' NOT NULL PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL,type INTEGER NOT NULL,package TEXT NOT NULL,sessionid TEXT NOT NULL,time LONG,page TEXT,properties TEXT,network TEXT,channel LONG,flyme_version TEXT,package_version TEXT,event_source TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string v0, "INSERT INTO event(_id,name,type,package,sessionid,time,page,properties,network,channel,flyme_version,package_version)  SELECT *  FROM temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    const-string v0, "DROP TABLE IF EXISTS temp_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 368
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method
