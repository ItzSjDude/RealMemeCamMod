.class abstract Lcom/oplus/camera/gl/i$b;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field public a:I

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    iput-object p1, p0, Lcom/oplus/camera/gl/i$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method
