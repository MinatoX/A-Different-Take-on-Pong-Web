timer = 0

function objective(dt)
--Hitboxes for the bars
bar1Height = bar1.y + 250
bar2Height = bar2.y + 250

--Respawn code
if waitforBall == true then

timer = timer + dt
if timer >= 2 then
  ballPoints = ballPoints + 1
  ball.x = 500
  ball.y = 300
  waitforBall = false
  gameStarted = true
  timer = 0
end
end

--Left bar
  if ball.x <= 60 then
  if ball.y >= bar2.y and ball.y <= bar2Height then
  --If ball hits bar
  if waitforBall == true then

  else
  ballDirection = 1
  barPoints = barPoints + .5
  end
  else
  if ball.x <= 110 then
  --If ball passes bars
  waitforBall = true
  end
  end

--Right bar
  elseif ball.x >= 1050 then
  if ball.y >= bar1.y and ball.y <= bar1Height then
  --If bar hits ball
  if waitforBall == true then

  else
  ballDirection = 2
  barPoints = barPoints + .5
  end
  else
  if ball.x >= 1100 then
  --If ball passes bars 
  waitforBall = true
  end
  end	
  end

--If ball tries to leave the boundaries
  if ball.y >= 600 then
  ball.y = 600
  elseif ball.y <= 5 then
  ball.y = 20
  end

  if bar1.y >= 600 then
  bar1.y = 600
  bar2.y = 600
  elseif bar1.y <= 0 then
  bar1.y = 0
  bar2.y = 0
  end

end