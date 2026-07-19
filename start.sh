#!/bin/bash

# Start backend and frontend concurrently

echo "Starting backend..."
cd backend
dotnet run --project src/Product.Api/Product.Api.csproj &
BACKEND_PID=$!

echo "Starting frontend..."
cd ../frontend
npm run dev &
FRONTEND_PID=$!

echo "Backend PID: $BACKEND_PID"
echo "Frontend PID: $FRONTEND_PID"
echo ""
echo "Press Ctrl+C to stop both servers."

# Wait and handle Ctrl+C to kill both processes
trap "echo 'Stopping...'; kill $BACKEND_PID $FRONTEND_PID; exit 0" SIGINT SIGTERM

wait $BACKEND_PID $FRONTEND_PID
