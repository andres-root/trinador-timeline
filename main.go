package main

import (
	"trinador-timeline/timeline"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	message := timeline.GetData()

	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": message,
		})
	})
	r.Run()
}
