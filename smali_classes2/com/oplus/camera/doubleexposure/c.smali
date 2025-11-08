.class public Lcom/oplus/camera/doubleexposure/c;
.super Ljava/lang/Object;
.source "DecodeVideoRequest.java"


# instance fields
.field private a:Lcom/oplus/camera/doubleexposure/b;

.field private b:Z

.field private c:Lcom/oplus/camera/doubleexposure/g$a;

.field private d:Lcom/oplus/camera/doubleexposure/a;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;Lcom/oplus/camera/doubleexposure/a;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/c;->a:Lcom/oplus/camera/doubleexposure/b;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/oplus/camera/doubleexposure/c;->b:Z

    .line 6
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/c;->c:Lcom/oplus/camera/doubleexposure/g$a;

    .line 7
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/c;->d:Lcom/oplus/camera/doubleexposure/a;

    .line 11
    iput-object p1, p0, Lcom/oplus/camera/doubleexposure/c;->a:Lcom/oplus/camera/doubleexposure/b;

    .line 12
    iput-boolean p2, p0, Lcom/oplus/camera/doubleexposure/c;->b:Z

    .line 13
    iput-object p3, p0, Lcom/oplus/camera/doubleexposure/c;->c:Lcom/oplus/camera/doubleexposure/g$a;

    .line 14
    iput-object p4, p0, Lcom/oplus/camera/doubleexposure/c;->d:Lcom/oplus/camera/doubleexposure/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/camera/doubleexposure/b;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/c;->a:Lcom/oplus/camera/doubleexposure/b;

    return-object p0
.end method

.method public b()Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/oplus/camera/doubleexposure/c;->b:Z

    return p0
.end method

.method public c()Lcom/oplus/camera/doubleexposure/g$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/c;->c:Lcom/oplus/camera/doubleexposure/g$a;

    return-object p0
.end method

.method public d()Lcom/oplus/camera/doubleexposure/a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/c;->d:Lcom/oplus/camera/doubleexposure/a;

    return-object p0
.end method
