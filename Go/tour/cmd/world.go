package main

import "github.com/spf13/cobra"

var worldCmd = &cobra.Command{
	Use:   "world",
	Short: "单词格式转换",
	Long:  "支持多种单词格式转化",
	Run:   func(cmd *cobra.Command, args []string) {},
}

func init() {}
