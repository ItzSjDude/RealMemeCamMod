.class public abstract Lorg/junit/runner/Runner;
.super Ljava/lang/Object;
.source "Runner.java"

# interfaces
.implements Lorg/junit/runner/Describable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDescription()Lorg/junit/runner/Description;
.end method

.method public abstract run(Lorg/junit/runner/notification/RunNotifier;)V
.end method

.method public testCount()I
    .locals 0

    .line 41
    invoke-virtual {p0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object p0

    invoke-virtual {p0}, Lorg/junit/runner/Description;->testCount()I

    move-result p0

    return p0
.end method
