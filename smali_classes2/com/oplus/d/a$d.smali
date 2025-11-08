.class public final Lcom/oplus/d/a$d;
.super Lcom/oplus/d/a$c;
.source "AppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:Lcom/oplus/d/a$a;

.field private static final c:Lcom/oplus/d/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/d/a$d;->a:Landroid/net/Uri;

    .line 1118
    new-instance v0, Lcom/oplus/d/a$a;

    sget-object v1, Lcom/oplus/d/a$d;->a:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/oplus/d/a$a;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/oplus/d/a$d;->b:Lcom/oplus/d/a$a;

    .line 1120
    new-instance v0, Lcom/oplus/d/a$b;

    sget-object v1, Lcom/oplus/d/a$d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/oplus/d/a$d;->b:Lcom/oplus/d/a$a;

    const-string v3, "GET_system"

    const-string v4, "PUT_system"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oplus/d/a$b;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/d/a$a;)V

    sput-object v0, Lcom/oplus/d/a$d;->c:Lcom/oplus/d/a$b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1166
    sget-object v0, Lcom/oplus/d/a$d;->a:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/oplus/d/a$d;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x64

    .line 1134
    invoke-static {p0, p1, v0}, Lcom/oplus/d/a$d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1138
    sget-object v0, Lcom/oplus/d/a$d;->c:Lcom/oplus/d/a$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/d/a$b;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 1151
    sget-object v2, Lcom/oplus/d/a$d;->c:Lcom/oplus/d/a$b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, -0x64

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/d/a$b;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0

    .line 1154
    :cond_0
    invoke-static {p1}, Lcom/oplus/d/a$d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/d/a$d;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 1183
    invoke-static {p0, p1}, Lcom/oplus/d/a$d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return p2
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0

    .line 1231
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/oplus/d/a$d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
