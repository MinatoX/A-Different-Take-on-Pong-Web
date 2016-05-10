--Playercontrols for the game

ballSpeed = 1000
ballVerticalSpeed = 700 --700
barSpeed = 1250 --1250

--How many times per second the enemy will update their path
updateRate = 0
continueUp = true
continueDown = true

--AI to help bars fight jukes
barJukePrevent = 0

function controls(dt)
bar1Height = bar1.y + 250
bar2Height = bar2.y + 250

--Ball controls
  --TODO: Improve computer AI
  if ballControls == "computer" then
  updateRate = updateRate + dt
  if updateRate >= .002 then
    if ball.y >= 550 then
      continueUp = false
      elseif ball.y <= 100 then
        continueDown = false
    end
    
    if continueUp == false and ball.y <= 300 then
      continueUp = true

    elseif continueUp == false then
      ball.y = ball.y - ballVerticalSpeed * dt
    end

      if continueDown == false and ball.y >= 300 then
        continueDown = true
   
    elseif continueDown == false then
      ball.y = ball.y + ballVerticalSpeed * dt

    end
    if ball.y >= bar1Height/2 and continueUp == true and continueDown == true then
      moredirection = math.random(1, 2)
      if moredirection == 1 then
      ball.y = ball.y + ballVerticalSpeed * dt
      elseif moredirection == 2 then
        ball.y = ball.y - ballVerticalSpeed * dt
      end
      updateRate = 0
      elseif ball.y < bar1Height/2 and continueUp == true and continueDown == true then
      moredirection = math.random(1, 2)
      if moredirection == 1 and ballDirection == 1 and ball.x >= 900  then
         ball.y = ball.y + ballVerticalSpeed * dt
       end
      ball.y = ball.y - ballVerticalSpeed * dt
    
      updateRate = 0
      end




  end
  elseif ballControls == "arrows" then
  if love.keyboard.isDown("up") then
  ball.y = ball.y - ballVerticalSpeed * dt
  elseif love.keyboard.isDown("down") then
  ball.y = ball.y + ballVerticalSpeed * dt
  end
  elseif ballControls == "mouse" then
  ball.y = mouseY
  elseif ballControls == "wasd" then
  if love.keyboard.isDown("w") then
  ball.y = ball.y - ballVerticalSpeed * dt
  elseif love.keyboard.isDown("s") then
  ball.y = ball.y + ballVerticalSpeed * dt
  end
  end

--Determines which direction ball heads in when it spawns
if gameStarted == true then
ballDirection = math.random(1, 2)
end

--Which direction the ball goes by itself
  if ballDirection == 1 then
  ball.x = ball.x + ballSpeed * dt
  gameStarted = false
  elseif ballDirection == 2 then
  ball.x = ball.x - ballSpeed * dt
  gameStarted = false
  end

--Bar controls
  --TODO: Improve computer AI
  if barControls == "computer" then
    if waitforBall == true then
    if bar1.y >= 300 then
    bar1.y = bar1.y - barSpeed * dt
    bar2.y = bar2.y -barSpeed * dt
  else
    bar1.y = bar1.y + barSpeed * dt
    bar2.y = bar2.y + barSpeed * dt
  end
    end
      updateRate = updateRate + dt
      if updateRate >= .03 then
  if ball.y <= bar1Height or ball.y <= bar2Height then
      updateRate = 0
      barRand = math.random(1, 5)
      barJukePrevent = barJukePrevent + dt
      if (barRand <= 4) then
      bar1.y = bar1.y - barSpeed * dt
      bar2.y = bar2.y - barSpeed * dt
      elseif (barRand >= 4) then
      bar1.y = bar1.y + barSpeed * dt
      bar2.y = bar2.y + barSpeed * dt
      end
      if (barJukePrevent >= .7) then
      barRand = math.random(1, 2)
      if (barRand >= 1.5) then
      bar1.y = bar1.y + barSpeed * dt
      bar2.y = bar2.y + barSpeed * dt
      end
      barJukePrevent = 0
      end
 elseif ball.y >= bar1Height or ball.y >= bar2Height then
      if (barRand <= 4) then
      bar1.y = bar1.y + barSpeed * dt
      bar2.y = bar2.y + barSpeed * dt
      elseif (barRand >= 4) then
      bar1.y = bar1.y - barSpeed * dt
      bar2.y = bar2.y - barSpeed * dt
      end
      if (barJukePrevent >= .7) then
      barRand = math.random(1, 2)
      if (barRand >= 1.5) then
      bar1.y = bar1.y - barSpeed * dt
      bar2.y = bar2.y - barSpeed * dt
      end
      barJukePrevent = 0
      end
      updateRate = 0
  end
  end


  elseif barControls == "mouse" then
  bar1.y = mouseY
  bar2.y = mouseY
  elseif barControls == "arrows" then
  if love.keyboard.isDown("up") then
  bar1.y = bar1.y - barSpeed * dt
  bar2.y = bar2.y - barSpeed * dt
  elseif love.keyboard.isDown("down") then
  bar1.y = bar1.y + barSpeed * dt
  bar2.y = bar2.y + barSpeed * dt	
  end
  elseif barControls == "wasd" then
  if love.keyboard.isDown("w") then
  bar1.y = bar1.y - barSpeed * dt
  bar2.y = bar2.y - barSpeed * dt
  elseif love.keyboard.isDown("s") then
  bar1.y = bar1.y + barSpeed * dt
  bar2.y = bar2.y + barSpeed * dt	
  end
  end

end