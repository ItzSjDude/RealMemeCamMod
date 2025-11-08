.class public Lcom/oplus/camera/g/a/g;
.super Ljava/lang/Object;
.source "ExifTagDef.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lcom/oplus/camera/g/a/a$a;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/oplus/camera/g/a/g;->a:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/oplus/camera/g/a/g;->b:Ljava/lang/String;

    .line 7
    iput v0, p0, Lcom/oplus/camera/g/a/g;->c:I

    .line 8
    iput-object v1, p0, Lcom/oplus/camera/g/a/g;->d:Lcom/oplus/camera/g/a/a$a;

    .line 11
    iput p1, p0, Lcom/oplus/camera/g/a/g;->a:I

    .line 12
    new-instance p1, Lcom/oplus/camera/g/a/a$a;

    invoke-direct {p1, p2}, Lcom/oplus/camera/g/a/a$a;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/camera/g/a/g;->d:Lcom/oplus/camera/g/a/a$a;

    .line 13
    iput-object p3, p0, Lcom/oplus/camera/g/a/g;->b:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/oplus/camera/g/a/g;->c:I

    return-void
.end method
