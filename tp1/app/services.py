def compute_bonus(sales: float) -> float:
    if sales < 0:
        raise ValueError("Sales must be positive")
    if sales < 50000:
        return sales * 0.05
    return sales * 0.10
