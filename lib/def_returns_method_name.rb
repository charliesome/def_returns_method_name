require "frozen_core"

class RubyVM::FrozenCore
  old_define_method = instance_method("core#define_method")

  define_method "core#define_method" do |klass, mid, iseq|
    fcore = self
    klass.class_eval do
      old_define_method.bind(fcore).call(klass, mid, iseq)
    end
    mid
  end

  old_define_singleton_method = instance_method("core#define_singleton_method")

  define_method "core#define_singleton_method" do |klass, mid, iseq|
    fcore = self
    klass.instance_eval do
      old_define_singleton_method.bind(fcore).call(klass, mid, iseq)
    end
    mid
  end
end
