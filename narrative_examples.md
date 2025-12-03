# Automatic narratives examples (Looker)

## Fill Rate performance:
CONCAT(
  "Current Fill Rate: ",
  ROUND(SUM(delivery_qty) / SUM(order_qty) * 100, 1),
  "% — The process is performing ",
  CASE 
    WHEN (SUM(delivery_qty) / SUM(order_qty)) >= 0.97 THEN "very well."
    WHEN (SUM(delivery_qty) / SUM(order_qty)) >= 0.80 THEN "moderately."
    ELSE "below expectations."
  END
)

## Main of cause gaps:
CONCAT(
" Main cause of gaps: ",
CASE WHEN SUM(rejected_qty) > 0 THEN "Rejections" ELSE "Supply constraints" END
)

## Offender most frequent: 
CONCAT("Offender most frequent: ", MAX(offender_name) )
