.class final Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeATestRule;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"

# interfaces
.implements Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/rules/RuleMemberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodMustBeATestRule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeATestRule;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->access$1400(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 260
    new-instance p0, Lorg/junit/internal/runners/rules/ValidationError;

    const-string v0, "must return an implementation of TestRule."

    invoke-direct {p0, p1, p2, v0}, Lorg/junit/internal/runners/rules/ValidationError;-><init>(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
