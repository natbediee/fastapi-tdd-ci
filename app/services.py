def compute_bonus(salary: float) -> float:
    if salary < 0:
        raise ValueError("Salary must be positive")
    if salary < 50000:
        return salary * 0.05
    return salary * 0.10

    # ERREUR VOLONTAIRE 
    #return salary * 0.2

