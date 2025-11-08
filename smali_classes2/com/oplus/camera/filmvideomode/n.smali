.class public Lcom/oplus/camera/filmvideomode/n;
.super Ljava/lang/Object;
.source "FilmSubMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/filmvideomode/n$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/oplus/camera/filmvideomode/n$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/n;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/oplus/camera/filmvideomode/n;->b:Z

    .line 6
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/n;->c:Lcom/oplus/camera/filmvideomode/n$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/filmvideomode/n$a;)Lcom/oplus/camera/filmvideomode/n;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/n;->c:Lcom/oplus/camera/filmvideomode/n$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/oplus/camera/filmvideomode/n;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/oplus/camera/filmvideomode/n;
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/n;->b:Z

    return-object p0
.end method

.method public a()Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/oplus/camera/filmvideomode/n;->b:Z

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/oplus/camera/filmvideomode/n$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/n;->c:Lcom/oplus/camera/filmvideomode/n$a;

    return-object p0
.end method
