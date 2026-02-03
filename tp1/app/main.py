from fastapi import FastAPI, HTTPException
from .services import compute_bonus

app = FastAPI()

@app.get("/bonus")
def get_bonus(sales: float):
    try:
        return {
            "sales": sales,
            "bonus": compute_bonus(sales)
        }
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
