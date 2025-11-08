.class public Lcom/oplus/camera/screen/c;
.super Ljava/lang/Object;
.source "LayoutItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/screen/c$a;
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:I

.field public e:[I

.field public f:Lcom/oplus/camera/screen/c$a;

.field public g:Z


# direct methods
.method public constructor <init>([I[I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/oplus/camera/screen/c;->a:[I

    .line 7
    iput-object v0, p0, Lcom/oplus/camera/screen/c;->b:[I

    .line 8
    iput-object v0, p0, Lcom/oplus/camera/screen/c;->c:[I

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/oplus/camera/screen/c;->d:I

    .line 10
    iput-object v0, p0, Lcom/oplus/camera/screen/c;->e:[I

    .line 11
    iput-object v0, p0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/oplus/camera/screen/c;->g:Z

    .line 16
    iput-object p1, p0, Lcom/oplus/camera/screen/c;->a:[I

    .line 17
    iput-object p2, p0, Lcom/oplus/camera/screen/c;->b:[I

    return-void
.end method
