-- Financial Ministry Study Database Schema
-- This script runs automatically when Docker container starts for first time

-- Budget Data Table
CREATE TABLE IF NOT EXISTS budget_data (
    id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    category VARCHAR(100) NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    country VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Economic Indicators Table
CREATE TABLE IF NOT EXISTS economic_indicators (
    id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    gdp DECIMAL(15, 2),
    inflation_rate DECIMAL(5, 2),
    unemployment_rate DECIMAL(5, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Government Revenue Table
CREATE TABLE IF NOT EXISTS government_revenue (
    id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    source VARCHAR(100) NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Government Expenditure Table
CREATE TABLE IF NOT EXISTS government_expenditure (
    id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    category VARCHAR(100) NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for better query performance
CREATE INDEX idx_budget_year ON budget_data(year);
CREATE INDEX idx_budget_category ON budget_data(category);
CREATE INDEX idx_indicators_year ON economic_indicators(year);
CREATE INDEX idx_revenue_year ON government_revenue(year);
CREATE INDEX idx_expenditure_year ON government_expenditure(year);
