using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Authentication;
using Microsoft.AspNetCore.Mvc;

namespace hello.Controllers
{
    public class UserController : ControllerBase
    {
        private static List<User> list = new List<User>()
        {
            new User {Id = 1, Name = "tom"}, new User {Id = 2, Name = "jim"},
        };

        [HttpGet]
        public string GetAsync(int id)
        {
            var user = list.FirstOrDefault(u => u.Id == id);
            return System.Text.Json.JsonSerializer.Serialize(user);
        }

        [HttpPost]
        public string Add([FromBody] User user)
        {
            if (HttpContext.Request.Headers.TryGetValue("Authorization", out var authorization) == false
                || authorization != "Bearer get token success")
            {
                throw new AuthenticationException("invalid token");
            }

            Console.WriteLine($"add success: userName: {user.Name}");
            return $"add success: userName: {user.Name}";
        }
    }

    public class User
    {
        public int Id { get; set; }

        public string Name { get; set; }
    }
}