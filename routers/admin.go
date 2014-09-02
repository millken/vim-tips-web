package routers

import (
	"github.com/codegangsta/martini-contrib/render"
	"github.com/martini-contrib/sessions"
)

func ShowLoginPage(r render.Render) {
	r.HTML(200, "admin/login", map[string]interface{}{
		"IsAbout": true}, render.HTMLOptions{""})
}

func HandleLogin(r render.Render, s sessions.Session) {
	r.HTML(200, "admin/login", map[string]interface{}{
		"IsAbout": true}, render.HTMLOptions{""})
}
