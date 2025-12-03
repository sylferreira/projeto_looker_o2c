# 📘 Dicionário de Dados — O2C

Documentação da tabela **fact_o2c** usada no pipeline BigQuery + Looker.

---

## 🧱 Estrutura da tabela

| Campo | Tipo | Descrição |
|------|------|-----------|
| order_id | INT64 | Identificador único do pedido |
| order_type_id | STRING | Tipo de pedido SAP |
| sales_org_id | STRING | Organização de vendas |
| distribution_channel_id | STRING | Canal |
| division_id | STRING | Divisão |
| customer_id | STRING | Cliente |
| sold_to_party | STRING | Cliente que comprou |
| ship_to_party | STRING | Cliente destino |
| product_id | STRING | Produto |
| plant_id | STRING | Planta de origem |
| sales_document_date | DATE | Data do pedido |
| created_on | DATE | Data de criação no SAP |
| created_by | STRING | Usuário SAP |
| requested_delivery_date | DATE | Data solicitada |
| confirmed_delivery_date | DATE | Data confirmada |
| planned_goods_issue_date | DATE | Data planejada GI |
| actual_goods_issue_date | DATE | Data real GI |
| order_qty | INT64 | Quantidade pedida |
| confirmed_qty | INT64 | Quantidade confirmada |
| delivery_qty | INT64 | Quantidade entregue |
| rejected_qty | INT64 | Quantidade rejeitada |
| net_value | FLOAT64 | Valor líquido |
| delivery_document_number | STRING | Número da entrega |
| billing_document | STRING | Fatura |
| offender_code | STRING | Código de problema |
| rejection_reason_id | STRING | Motivo rejeição |
| created_at | TIMESTAMP | Carimbo de ingestão |

---

## 🧮 Métricas derivadas (VIEW vw_o2c_metrics)

- **fill_rate** = delivery_qty / order_qty  
- **confirmation_rate**  
- **rejection_rate**  
- **leadtime_confirmed**  
- **leadtime_agi**  
- **gap_category**  
- **requested_week / confirmed_week / agi_week**  

---

## 🔍 Observações

- Datas são sempre **DATE**, nunca DATETIME  
- Campos numéricos vêm tratados como INT64  
- Offender é categorizado para análise de Supply Chain  
